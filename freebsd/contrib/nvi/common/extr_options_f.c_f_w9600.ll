; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_w9600.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_w9600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_w9600(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_7__*, i32*)*, i64 (%struct.TYPE_7__*, i32*)** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = call i64 %15(%struct.TYPE_7__* %16, i32* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 4800
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @f_window(%struct.TYPE_7__* %25, i32* %26, i8* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %23, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @f_window(%struct.TYPE_7__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
