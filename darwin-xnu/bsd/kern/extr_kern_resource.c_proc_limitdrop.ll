; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_limitdrop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_limitdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.plimit*, %struct.plimit* }
%struct.plimit = type { i64 }

@M_PLIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_limitdrop(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.plimit*, align 8
  %6 = alloca %struct.plimit*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.plimit* null, %struct.plimit** %5, align 8
  store %struct.plimit* null, %struct.plimit** %6, align 8
  %7 = call i32 (...) @proc_list_lock()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.plimit*, %struct.plimit** %9, align 8
  %11 = getelementptr inbounds %struct.plimit, %struct.plimit* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.plimit*, %struct.plimit** %17, align 8
  store %struct.plimit* %18, %struct.plimit** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store %struct.plimit* null, %struct.plimit** %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.plimit*, %struct.plimit** %26, align 8
  %28 = icmp ne %struct.plimit* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.plimit*, %struct.plimit** %31, align 8
  %33 = getelementptr inbounds %struct.plimit, %struct.plimit* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.plimit*, %struct.plimit** %39, align 8
  store %struct.plimit* %40, %struct.plimit** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.plimit* null, %struct.plimit** %42, align 8
  br label %43

43:                                               ; preds = %37, %29, %24, %21
  %44 = call i32 (...) @proc_list_unlock()
  %45 = load %struct.plimit*, %struct.plimit** %5, align 8
  %46 = icmp ne %struct.plimit* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.plimit*, %struct.plimit** %5, align 8
  %49 = load i32, i32* @M_PLIMIT, align 4
  %50 = call i32 @FREE_ZONE(%struct.plimit* %48, i32 8, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.plimit*, %struct.plimit** %6, align 8
  %53 = icmp ne %struct.plimit* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.plimit*, %struct.plimit** %6, align 8
  %56 = load i32, i32* @M_PLIMIT, align 4
  %57 = call i32 @FREE_ZONE(%struct.plimit* %55, i32 8, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @FREE_ZONE(%struct.plimit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
