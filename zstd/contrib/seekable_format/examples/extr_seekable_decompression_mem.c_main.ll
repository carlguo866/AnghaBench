; ModuleID = '/home/carl/AnghaBench/zstd/contrib/seekable_format/examples/extr_seekable_decompression_mem.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/seekable_format/examples/extr_seekable_decompression_mem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wrong arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s FILE START END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  store i32 1, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoll(i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoll(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @decompressFile_orDie(i8* %35, i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @decompressFile_orDie(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
