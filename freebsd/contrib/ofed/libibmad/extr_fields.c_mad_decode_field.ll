; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c_mad_decode_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c_mad_decode_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ib_mad_f = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mad_decode_field(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ib_mad_f, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %10
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 32
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = call i32 @_get_field(i32* %25, i32 0, %struct.TYPE_6__* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %46

30:                                               ; preds = %19
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = call i32 @_get_field64(i32* %36, i32 0, %struct.TYPE_6__* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @_get_array(i32* %42, i32 0, %struct.TYPE_6__* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %35, %24, %14
  ret void
}

declare dso_local i32 @_get_field(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @_get_field64(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @_get_array(i32*, i32, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
