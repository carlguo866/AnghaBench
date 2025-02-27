; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_msg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_msg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.reply_info*, %struct.TYPE_2__ }
%struct.reply_info = type { i32, %struct.ub_packed_rrset_key**, i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.TYPE_2__ = type { i64, i32*, i8*, i8*, i32 }
%struct.regional = type { i32 }

@RR_COUNT_MAX = common dso_local global i64 0, align 8
@BIT_QR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @dns_msg_create(i32* %0, i64 %1, i8* %2, i8* %3, %struct.regional* %4, i64 %5) #0 {
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.regional*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dns_msg*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.regional* %4, %struct.regional** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.regional*, %struct.regional** %12, align 8
  %16 = call i64 @regional_alloc(%struct.regional* %15, i64 48)
  %17 = inttoptr i64 %16 to %struct.dns_msg*
  store %struct.dns_msg* %17, %struct.dns_msg** %14, align 8
  %18 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %19 = icmp ne %struct.dns_msg* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %94

21:                                               ; preds = %6
  %22 = load %struct.regional*, %struct.regional** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @regional_alloc_init(%struct.regional* %22, i32* %23, i64 %24)
  %26 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %27 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %30 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %94

35:                                               ; preds = %21
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %38 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %46 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %49 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.regional*, %struct.regional** %12, align 8
  %52 = call i64 @regional_alloc_zero(%struct.regional* %51, i32 20)
  %53 = inttoptr i64 %52 to %struct.reply_info*
  %54 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %55 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %54, i32 0, i32 0
  store %struct.reply_info* %53, %struct.reply_info** %55, align 8
  %56 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %57 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %56, i32 0, i32 0
  %58 = load %struct.reply_info*, %struct.reply_info** %57, align 8
  %59 = icmp ne %struct.reply_info* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %35
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %94

61:                                               ; preds = %35
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @RR_COUNT_MAX, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %94

66:                                               ; preds = %61
  %67 = load i32, i32* @BIT_QR, align 4
  %68 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %69 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %68, i32 0, i32 0
  %70 = load %struct.reply_info*, %struct.reply_info** %69, align 8
  %71 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %73 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %72, i32 0, i32 0
  %74 = load %struct.reply_info*, %struct.reply_info** %73, align 8
  %75 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.regional*, %struct.regional** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = mul i64 %77, 8
  %79 = call i64 @regional_alloc(%struct.regional* %76, i64 %78)
  %80 = inttoptr i64 %79 to %struct.ub_packed_rrset_key**
  %81 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %82 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %81, i32 0, i32 0
  %83 = load %struct.reply_info*, %struct.reply_info** %82, align 8
  %84 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %83, i32 0, i32 1
  store %struct.ub_packed_rrset_key** %80, %struct.ub_packed_rrset_key*** %84, align 8
  %85 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %86 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %85, i32 0, i32 0
  %87 = load %struct.reply_info*, %struct.reply_info** %86, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 1
  %89 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %88, align 8
  %90 = icmp ne %struct.ub_packed_rrset_key** %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %66
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %94

92:                                               ; preds = %66
  %93 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  store %struct.dns_msg* %93, %struct.dns_msg** %7, align 8
  br label %94

94:                                               ; preds = %92, %91, %65, %60, %34, %20
  %95 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  ret %struct.dns_msg* %95
}

declare dso_local i64 @regional_alloc(%struct.regional*, i64) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32*, i64) #1

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
