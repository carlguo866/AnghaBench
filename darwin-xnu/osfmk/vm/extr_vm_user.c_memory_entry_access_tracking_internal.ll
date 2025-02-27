; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_memory_entry_access_tracking_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_memory_entry_access_tracking_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@IKOT_NAMED_ENTRY = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i64 0, align 8
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_entry_access_tracking_internal(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = call i32 @IP_VALID(%struct.TYPE_11__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = call i64 @ip_kotype(%struct.TYPE_11__* %17)
  %19 = load i64, i64* @IKOT_NAMED_ENTRY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = call i32 @named_entry_lock(%struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %23
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = call i32 @named_entry_unlock(%struct.TYPE_10__* %40)
  %42 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @VM_OBJECT_NULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = call i32 @named_entry_unlock(%struct.TYPE_10__* %52)
  %54 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = call i32 @named_entry_unlock(%struct.TYPE_10__* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %51, %39, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @IP_VALID(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_11__*) #1

declare dso_local i32 @named_entry_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @named_entry_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
