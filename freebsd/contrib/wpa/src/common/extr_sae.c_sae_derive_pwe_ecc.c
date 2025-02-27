
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int x_cand_bin ;
typedef int x_bin ;
typedef int u8 ;
struct sae_data {TYPE_1__* tmp; int group; } ;
struct crypto_bignum {int dummy; } ;
typedef int qr_bin ;
typedef int qnr_bin ;
typedef int pwd_seed ;
typedef int prime ;
typedef int counter ;
typedef int addrs ;
struct TYPE_2__ {size_t prime_len; scalar_t__ pwe_ecc; int ec; struct crypto_bignum* prime; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SAE_MAX_ECC_PRIME_LEN ;
 int SHA256_MAC_LEN ;
 int bin_clear_free (int*,size_t) ;
 int const_time_select_bin (int,int*,int const*,size_t,int*) ;
 int const_time_select_u8 (int,int,int) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 struct crypto_bignum* crypto_bignum_init_set (int*,size_t) ;
 scalar_t__ crypto_bignum_to_bin (struct crypto_bignum*,int*,int,size_t) ;
 scalar_t__ crypto_ec_point_init (int ) ;
 int crypto_ec_point_solve_y_coord (int ,scalar_t__,struct crypto_bignum*,int) ;
 scalar_t__ dragonfly_get_random_qr_qnr (struct crypto_bignum*,struct crypto_bignum**,struct crypto_bignum**) ;
 int dragonfly_min_pwe_loop_iter (int ) ;
 scalar_t__ hmac_sha256_vector (int*,int,size_t,int const**,size_t*,int*) ;
 int os_free (int*) ;
 int* os_malloc (size_t) ;
 int os_memset (int*,int ,int) ;
 size_t os_strlen (char const*) ;
 scalar_t__ random_get_bytes (int*,size_t) ;
 int sae_pwd_seed_key (int const*,int const*,int*) ;
 int sae_test_pwd_seed_ecc (struct sae_data*,int*,int*,int*,int*,int*) ;
 int wpa_hexdump_ascii_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int sae_derive_pwe_ecc(struct sae_data *sae, const u8 *addr1,
         const u8 *addr2, const u8 *password,
         size_t password_len, const char *identifier)
{
 u8 counter, k;
 u8 addrs[2 * ETH_ALEN];
 const u8 *addr[3];
 size_t len[3];
 size_t num_elem;
 u8 *dummy_password, *tmp_password;
 int pwd_seed_odd = 0;
 u8 prime[SAE_MAX_ECC_PRIME_LEN];
 size_t prime_len;
 struct crypto_bignum *x = ((void*)0), *qr = ((void*)0), *qnr = ((void*)0);
 u8 x_bin[SAE_MAX_ECC_PRIME_LEN];
 u8 x_cand_bin[SAE_MAX_ECC_PRIME_LEN];
 u8 qr_bin[SAE_MAX_ECC_PRIME_LEN];
 u8 qnr_bin[SAE_MAX_ECC_PRIME_LEN];
 int res = -1;
 u8 found = 0;


 os_memset(x_bin, 0, sizeof(x_bin));

 dummy_password = os_malloc(password_len);
 tmp_password = os_malloc(password_len);
 if (!dummy_password || !tmp_password ||
     random_get_bytes(dummy_password, password_len) < 0)
  goto fail;

 prime_len = sae->tmp->prime_len;
 if (crypto_bignum_to_bin(sae->tmp->prime, prime, sizeof(prime),
     prime_len) < 0)
  goto fail;





 if (dragonfly_get_random_qr_qnr(sae->tmp->prime, &qr, &qnr) < 0 ||
     crypto_bignum_to_bin(qr, qr_bin, sizeof(qr_bin), prime_len) < 0 ||
     crypto_bignum_to_bin(qnr, qnr_bin, sizeof(qnr_bin), prime_len) < 0)
  goto fail;

 wpa_hexdump_ascii_key(MSG_DEBUG, "SAE: password",
         password, password_len);
 if (identifier)
  wpa_printf(MSG_DEBUG, "SAE: password identifier: %s",
      identifier);







 sae_pwd_seed_key(addr1, addr2, addrs);

 addr[0] = tmp_password;
 len[0] = password_len;
 num_elem = 1;
 if (identifier) {
  addr[num_elem] = (const u8 *) identifier;
  len[num_elem] = os_strlen(identifier);
  num_elem++;
 }
 addr[num_elem] = &counter;
 len[num_elem] = sizeof(counter);
 num_elem++;






 k = dragonfly_min_pwe_loop_iter(sae->group);

 for (counter = 1; counter <= k || !found; counter++) {
  u8 pwd_seed[SHA256_MAC_LEN];

  if (counter > 200) {

   wpa_printf(MSG_DEBUG, "SAE: Failed to derive PWE");
   break;
  }

  wpa_printf(MSG_DEBUG, "SAE: counter = %03u", counter);
  const_time_select_bin(found, dummy_password, password,
          password_len, tmp_password);
  if (hmac_sha256_vector(addrs, sizeof(addrs), num_elem,
           addr, len, pwd_seed) < 0)
   break;

  res = sae_test_pwd_seed_ecc(sae, pwd_seed,
         prime, qr_bin, qnr_bin, x_cand_bin);
  const_time_select_bin(found, x_bin, x_cand_bin, prime_len,
          x_bin);
  pwd_seed_odd = const_time_select_u8(
   found, pwd_seed_odd,
   pwd_seed[SHA256_MAC_LEN - 1] & 0x01);
  os_memset(pwd_seed, 0, sizeof(pwd_seed));
  if (res < 0)
   goto fail;
  found |= res * 0xff;
  wpa_printf(MSG_DEBUG, "SAE: pwd-seed result %d found=0x%02x",
      res, found);
 }

 if (!found) {
  wpa_printf(MSG_DEBUG, "SAE: Could not generate PWE");
  res = -1;
  goto fail;
 }

 x = crypto_bignum_init_set(x_bin, prime_len);
 if (!x) {
  res = -1;
  goto fail;
 }

 if (!sae->tmp->pwe_ecc)
  sae->tmp->pwe_ecc = crypto_ec_point_init(sae->tmp->ec);
 if (!sae->tmp->pwe_ecc)
  res = -1;
 else
  res = crypto_ec_point_solve_y_coord(sae->tmp->ec,
          sae->tmp->pwe_ecc, x,
          pwd_seed_odd);
 if (res < 0) {




  wpa_printf(MSG_DEBUG, "SAE: Could not solve y");
 }

fail:
 crypto_bignum_deinit(qr, 0);
 crypto_bignum_deinit(qnr, 0);
 os_free(dummy_password);
 bin_clear_free(tmp_password, password_len);
 crypto_bignum_deinit(x, 1);
 os_memset(x_bin, 0, sizeof(x_bin));
 os_memset(x_cand_bin, 0, sizeof(x_cand_bin));

 return res;
}
