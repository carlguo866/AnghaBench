; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_CHECKSUM.c_checksum_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_CHECKSUM.c_checksum_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_CHECKSUM_info* }
%struct.xt_CHECKSUM_info = type { i32 }

@XT_CHECKSUM_OP_FILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported CHECKSUM operation %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no CHECKSUM operation enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @checksum_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_CHECKSUM_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %6, align 8
  store %struct.xt_CHECKSUM_info* %7, %struct.xt_CHECKSUM_info** %4, align 8
  %8 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XT_CHECKSUM_OP_FILL, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %17 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %22 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
