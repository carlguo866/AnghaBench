; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_check_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_editor.c_check_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @check_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_cancel(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32* (i32)*, i32* (i32)** %5, align 8
  %7 = icmp ne i32* (i32)* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i32 @START_CALLBACK(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32* (i32)*, i32* (i32)** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32* %13(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i32 @END_CALLBACK(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %8, %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @svn_error_trace(i32* %21)
  ret i32* %22
}

declare dso_local i32 @START_CALLBACK(%struct.TYPE_5__*) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_5__*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
