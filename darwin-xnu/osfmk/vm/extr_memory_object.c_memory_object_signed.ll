; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_signed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_memory_object_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_object_signed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_6__* @memory_object_control_to_vm_object(i32 %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_OBJECT_NULL, align 8
  %11 = icmp eq %struct.TYPE_6__* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32 @vm_object_lock(%struct.TYPE_6__* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = call i32 @vm_object_unlock(%struct.TYPE_6__* %20)
  %22 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.TYPE_6__* @memory_object_control_to_vm_object(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
