; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_test.c_test_kputl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_test.c_test_kputl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"kputl()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kputl(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [24 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = call i32 @kputl(i64 %8, %struct.TYPE_5__* %9)
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %16 = call i32 @check(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %14, i8* %15)
  ret void
}

declare dso_local i32 @kputl(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @check(i8*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
