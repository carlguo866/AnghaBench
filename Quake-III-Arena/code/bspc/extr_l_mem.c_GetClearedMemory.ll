; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_mem.c_GetClearedMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_mem.c_GetClearedMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@allocedmemory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetClearedMemory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @malloc(i32 %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @memset(i8* %12, i32 0, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @MemorySize(i8* %15)
  %17 = load i32, i32* @allocedmemory, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @allocedmemory, align 4
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @MemorySize(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
