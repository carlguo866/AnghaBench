; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_get_temp_filepath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_get_temp_filepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_temp_filepath.scrrunW = internal constant [8 x i8] c"scrrun\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @get_temp_filepath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_temp_filepath(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @GetTempPathW(i32 %7, i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @lstrcatW(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_temp_filepath.scrrunW, i64 0, i64 0))
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @lstrcpyW(i8* %12, i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @lstrcatW(i8* %15, i8* %16)
  ret void
}

declare dso_local i32 @GetTempPathW(i32, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
