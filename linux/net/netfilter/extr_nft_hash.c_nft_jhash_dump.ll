; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_jhash_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_jhash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_jhash = type { i64, i64, i64, i64, i32, i32, i32 }

@NFTA_HASH_SREG = common dso_local global i32 0, align 4
@NFTA_HASH_DREG = common dso_local global i32 0, align 4
@NFTA_HASH_LEN = common dso_local global i32 0, align 4
@NFTA_HASH_MODULUS = common dso_local global i32 0, align 4
@NFTA_HASH_SEED = common dso_local global i32 0, align 4
@NFTA_HASH_OFFSET = common dso_local global i32 0, align 4
@NFTA_HASH_TYPE = common dso_local global i32 0, align 4
@NFT_HASH_JENKINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_jhash_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_jhash_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_jhash*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_jhash* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_jhash* %8, %struct.nft_jhash** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_HASH_SREG, align 4
  %11 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %12 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_HASH_DREG, align 4
  %20 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %21 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nft_dump_register(%struct.sk_buff* %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %86

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NFTA_HASH_LEN, align 4
  %29 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %30 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @htonl(i64 %31)
  %33 = call i64 @nla_put_be32(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %86

36:                                               ; preds = %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @NFTA_HASH_MODULUS, align 4
  %39 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %40 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @htonl(i64 %41)
  %43 = call i64 @nla_put_be32(%struct.sk_buff* %37, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %86

46:                                               ; preds = %36
  %47 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %48 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @NFTA_HASH_SEED, align 4
  %54 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %55 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @htonl(i64 %56)
  %58 = call i64 @nla_put_be32(%struct.sk_buff* %52, i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %86

61:                                               ; preds = %51, %46
  %62 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %63 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* @NFTA_HASH_OFFSET, align 4
  %69 = load %struct.nft_jhash*, %struct.nft_jhash** %6, align 8
  %70 = getelementptr inbounds %struct.nft_jhash, %struct.nft_jhash* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @htonl(i64 %71)
  %73 = call i64 @nla_put_be32(%struct.sk_buff* %67, i32 %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %86

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %61
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* @NFTA_HASH_TYPE, align 4
  %80 = load i64, i64* @NFT_HASH_JENKINS, align 8
  %81 = call i32 @htonl(i64 %80)
  %82 = call i64 @nla_put_be32(%struct.sk_buff* %78, i32 %79, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %84, %75, %60, %45, %35, %25, %16
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.nft_jhash* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
