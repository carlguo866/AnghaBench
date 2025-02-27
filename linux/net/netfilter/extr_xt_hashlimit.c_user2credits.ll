; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_user2credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_user2credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XT_HASHLIMIT_SCALE = common dso_local global i32 0, align 4
@XT_HASHLIMIT_SCALE_v2 = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY_v1 = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @user2credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user2credits(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @XT_HASHLIMIT_SCALE, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @XT_HASHLIMIT_SCALE_v2, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @CREDITS_PER_JIFFY_v1, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @CREDITS_PER_JIFFY, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @div64_u64(i32 %31, i32 %34)
  %36 = call i32 @div64_u64(i32 %30, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @div64_u64(i32 %41, i32 %42)
  %44 = mul nsw i32 %38, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
