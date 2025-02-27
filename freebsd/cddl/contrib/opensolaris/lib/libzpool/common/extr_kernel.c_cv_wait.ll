; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@curthread = common dso_local global i32* null, align 8
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cv_wait(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32* @mutex_owner(%struct.TYPE_4__* %6)
  %8 = load i32*, i32** @curthread, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @cond_wait(i32* %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @EINTR, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load i32*, i32** @curthread, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @mutex_owner(%struct.TYPE_4__*) #1

declare dso_local i32 @cond_wait(i32*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
