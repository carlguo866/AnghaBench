; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_cmdlib.c_LoadFileBlock.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_cmdlib.c_LoadFileBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_BLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadFileBlock(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @SafeOpenRead(i8* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @Q_filelength(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MEM_BLOCKSIZE, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @MEM_BLOCKSIZE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @memset(i8* %30, i32 0, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SafeRead(i32* %34, i8* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i8**, i8*** %4, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32* @SafeOpenRead(i8*) #1

declare dso_local i32 @Q_filelength(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SafeRead(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
