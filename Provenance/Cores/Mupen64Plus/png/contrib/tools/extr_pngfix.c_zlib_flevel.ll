; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_flevel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_flevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"supfast\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stdfast\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@UNREACHED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"COMPILER BUG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.zlib*)* @zlib_flevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zlib_flevel(%struct.zlib* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zlib*, align 8
  store %struct.zlib* %0, %struct.zlib** %3, align 8
  %4 = load %struct.zlib*, %struct.zlib** %3, align 8
  %5 = getelementptr inbounds %struct.zlib, %struct.zlib* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 6
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %18

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %18

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @UNREACHED, align 4
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %13, %12, %11, %10
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
