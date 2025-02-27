; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_mac_addr_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_mac_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"mac_addr_valid\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"MAC address is multicast\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"MAC address is broadcast\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"MAC address is all zeros\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @mac_addr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_addr_valid(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load i64*, i64** %2, align 8
  %6 = call i64 @IS_MULTICAST(i64* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load i64*, i64** %2, align 8
  %12 = call i64 @IS_BROADCAST(i64* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %49

16:                                               ; preds = %10
  %17 = load i64*, i64** %2, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load i64*, i64** %2, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load i64*, i64** %2, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i64*, i64** %2, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i64*, i64** %2, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64*, i64** %2, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %41, %36, %31, %26, %21, %16
  br label %49

49:                                               ; preds = %48, %14
  br label %50

50:                                               ; preds = %49, %8
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @IS_MULTICAST(i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @IS_BROADCAST(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
