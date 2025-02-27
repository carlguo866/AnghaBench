; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_set_fsmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_set_fsmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"mount field \22%s\22 already set\00", align 1
@fsmount_strings = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fsmount(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** @fsmount_strings, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fsi_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %53

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %51 [
    i32 130, label %30
    i32 128, label %34
    i32 131, label %38
    i32 129, label %42
    i32 132, label %46
    i32 133, label %50
  ]

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %53

34:                                               ; preds = %23
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %53

38:                                               ; preds = %23
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %53

42:                                               ; preds = %23
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %53

46:                                               ; preds = %23
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  br label %53

50:                                               ; preds = %23
  br label %53

51:                                               ; preds = %23
  %52 = call i32 (...) @abort() #3
  unreachable

53:                                               ; preds = %16, %50, %46, %42, %38, %34, %30
  ret void
}

declare dso_local i32 @fsi_error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
