; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dcr.c_dcr_resource_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_dcr.c_dcr_resource_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dcr-reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcr_resource_start(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32* @of_get_property(%struct.device_node* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = udiv i32 %18, 8
  %20 = icmp uge i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %12, %2
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
