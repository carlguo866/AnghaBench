; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogSectorSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogSectorSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [11 x i8] c"SECTORSIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlogSectorSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogSectorSize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = call i64 (...) @vlog_time()
  store i64 %9, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 %16(%struct.TYPE_6__* %19)
  store i32 %20, i32* %3, align 4
  %21 = call i64 (...) @vlog_time()
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @vlogLogPrint(i32 %26, i64 %27, i64 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1, i32 -1, i32 0, i32 %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @vlog_time(...) #1

declare dso_local i32 @vlogLogPrint(i32, i64, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
