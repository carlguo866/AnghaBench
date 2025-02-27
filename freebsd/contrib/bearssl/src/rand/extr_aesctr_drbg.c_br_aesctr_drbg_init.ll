; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32*, i8*, i32)* }

@br_aesctr_drbg_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aesctr_drbg_init(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32* @br_aesctr_drbg_vtable, i32** %11, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 16)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %21 = call i32 %16(i32* %19, i8* %20, i32 16)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @br_aesctr_drbg_update(%struct.TYPE_9__* %24, i8* %25, i64 %26)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @br_aesctr_drbg_update(%struct.TYPE_9__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
