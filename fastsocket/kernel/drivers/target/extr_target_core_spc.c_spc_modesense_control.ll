; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_modesense_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_modesense_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i32, i32*)* @spc_modesense_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_modesense_control(%struct.se_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 10, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 10, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %59

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 2, i32* %16, align 4
  %17 = load %struct.se_device*, %struct.se_device** %4, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 16
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.se_device*, %struct.se_device** %4, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %40

32:                                               ; preds = %14
  %33 = load %struct.se_device*, %struct.se_device** %4, align 8
  %34 = getelementptr inbounds %struct.se_device, %struct.se_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 32, i32 0
  br label %40

40:                                               ; preds = %32, %31
  %41 = phi i32 [ 48, %31 ], [ %39, %32 ]
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.se_device*, %struct.se_device** %4, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 64, i32 0
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32 255, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 9
  store i32 255, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 11
  store i32 30, i32* %58, align 4
  br label %59

59:                                               ; preds = %40, %13
  ret i32 12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
