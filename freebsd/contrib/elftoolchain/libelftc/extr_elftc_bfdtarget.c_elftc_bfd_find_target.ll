; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_bfdtarget.c_elftc_bfd_find_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_bfdtarget.c_elftc_bfd_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@_libelftc_targets = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @elftc_bfd_find_target(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_libelftc_targets, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @strcmp(i8* %12, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  br label %25

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %26
}

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
