; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_do_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_do_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i8*, i8*, i32*)* @do_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_regexp(i8* %0, %struct.TYPE_6__* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @regexec(%struct.TYPE_6__* %12, i8* %13, i64 %17, i32* %18, i32 0)
  store i32 %19, i32* %11, align 4
  switch i32 %19, label %29 [
    i32 0, label %20
    i32 128, label %28
  ]

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @add_replace(i8* %21, %struct.TYPE_6__* %22, i8* %23, i32* %24)
  %26 = call i32 (...) @getstring()
  %27 = call i32 @pbstr(i32 %26)
  br label %34

28:                                               ; preds = %5
  br label %34

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @exit_regerror(i32 %30, %struct.TYPE_6__* %31, i8* %32)
  br label %34

34:                                               ; preds = %29, %28, %20
  ret void
}

declare dso_local i32 @regexec(%struct.TYPE_6__*, i8*, i64, i32*, i32) #1

declare dso_local i32 @add_replace(i8*, %struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @pbstr(i32) #1

declare dso_local i32 @getstring(...) #1

declare dso_local i32 @exit_regerror(i32, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
