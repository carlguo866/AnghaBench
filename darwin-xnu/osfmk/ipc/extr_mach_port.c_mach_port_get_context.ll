; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_get_context(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @IS_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %14, i64* %4, align 8
  br label %46

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MACH_PORT_VALID(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %20, i64* %4, align 8
  br label %46

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ipc_port_translate_receive(i64 %22, i32 %23, %struct.TYPE_4__** %8)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %4, align 8
  br label %46

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = call i32 @ip_unlock(%struct.TYPE_4__* %43)
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %42, %28, %19, %13
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_port_translate_receive(i64, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
