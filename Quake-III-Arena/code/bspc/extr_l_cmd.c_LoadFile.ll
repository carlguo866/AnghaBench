; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_LoadFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadFile(i8* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @SafeOpenRead(i8* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @fseek(i32* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @Q_filelength(i32* %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8* @GetMemory(i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @SafeRead(i32* %30, i8* %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32* @SafeOpenRead(i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @Q_filelength(i32*) #1

declare dso_local i8* @GetMemory(i32) #1

declare dso_local i32 @SafeRead(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
