
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef int name_dir_inner_file ;
typedef int name_dir_inner ;
typedef int name_dir_file3 ;
typedef int name_dir_file2 ;
typedef int name_dir_file1 ;
typedef struct dirent DIR ;


 scalar_t__ DT_DIR ;
 scalar_t__ DT_REG ;
 int TEST_ASSERT_EQUAL (int,int) ;
 int TEST_ASSERT_NOT_NULL (struct dirent*) ;
 int TEST_ASSERT_TRUE (int) ;
 int TEST_FAIL_MESSAGE (char*) ;
 int closedir (struct dirent*) ;
 int mkdir (char const*,int) ;
 struct dirent* opendir (char const*) ;
 int printf (char*,char*) ;
 struct dirent* readdir (struct dirent*) ;
 int rewinddir (struct dirent*) ;
 int rmdir (char const*) ;
 int seekdir (struct dirent*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcasecmp (char*,char const*) ;
 int test_fatfs_create_file_with_text (char*,char*) ;
 int unlink (char*) ;

void test_fatfs_opendir_readdir_rewinddir_utf_8(const char* dir_prefix)
{
    char name_dir_inner_file[64];
    char name_dir_inner[64];
    char name_dir_file3[64];
    char name_dir_file2[64];
    char name_dir_file1[64];

    snprintf(name_dir_inner_file, sizeof(name_dir_inner_file), "%s/内部目录/内部文件.txt", dir_prefix);
    snprintf(name_dir_inner, sizeof(name_dir_inner), "%s/内部目录", dir_prefix);
    snprintf(name_dir_file3, sizeof(name_dir_file3), "%s/文件三.bin", dir_prefix);
    snprintf(name_dir_file2, sizeof(name_dir_file2), "%s/文件二.txt", dir_prefix);
    snprintf(name_dir_file1, sizeof(name_dir_file1), "%s/文件一.txt", dir_prefix);

    unlink(name_dir_inner_file);
    rmdir(name_dir_inner);
    unlink(name_dir_file1);
    unlink(name_dir_file2);
    unlink(name_dir_file3);
    rmdir(dir_prefix);

    TEST_ASSERT_EQUAL(0, mkdir(dir_prefix, 0755));
    test_fatfs_create_file_with_text(name_dir_file1, "一号\n");
    test_fatfs_create_file_with_text(name_dir_file2, "二号\n");
    test_fatfs_create_file_with_text(name_dir_file3, "\0一\0二\0三");
    TEST_ASSERT_EQUAL(0, mkdir(name_dir_inner, 0755));
    test_fatfs_create_file_with_text(name_dir_inner_file, "三号\n");

    DIR* dir = opendir(dir_prefix);
    TEST_ASSERT_NOT_NULL(dir);
    int count = 0;
    const char* names[4];
    while(count < 4) {
        struct dirent* de = readdir(dir);
        if (!de) {
            break;
        }
        printf("found '%s'\n", de->d_name);
        if (strcasecmp(de->d_name, "文件一.txt") == 0) {
            TEST_ASSERT_TRUE(de->d_type == DT_REG);
            names[count] = "文件一.txt";
            ++count;
        } else if (strcasecmp(de->d_name, "文件二.txt") == 0) {
            TEST_ASSERT_TRUE(de->d_type == DT_REG);
            names[count] = "文件二.txt";
            ++count;
        } else if (strcasecmp(de->d_name, "内部目录") == 0) {
            TEST_ASSERT_TRUE(de->d_type == DT_DIR);
            names[count] = "内部目录";
            ++count;
        } else if (strcasecmp(de->d_name, "文件三.bin") == 0) {
            TEST_ASSERT_TRUE(de->d_type == DT_REG);
            names[count] = "文件三.bin";
            ++count;
        } else {
            TEST_FAIL_MESSAGE("unexpected directory entry");
        }
    }
    TEST_ASSERT_EQUAL(count, 4);

    rewinddir(dir);
    struct dirent* de = readdir(dir);
    TEST_ASSERT_NOT_NULL(de);
    TEST_ASSERT_EQUAL(0, strcasecmp(de->d_name, names[0]));
    seekdir(dir, 3);
    de = readdir(dir);
    TEST_ASSERT_NOT_NULL(de);
    TEST_ASSERT_EQUAL(0, strcasecmp(de->d_name, names[3]));
    seekdir(dir, 1);
    de = readdir(dir);
    TEST_ASSERT_NOT_NULL(de);
    TEST_ASSERT_EQUAL(0, strcasecmp(de->d_name, names[1]));
    seekdir(dir, 2);
    de = readdir(dir);
    TEST_ASSERT_NOT_NULL(de);
    TEST_ASSERT_EQUAL(0, strcasecmp(de->d_name, names[2]));

    TEST_ASSERT_EQUAL(0, closedir(dir));
}
