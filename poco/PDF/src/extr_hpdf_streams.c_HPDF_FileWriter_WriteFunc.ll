; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileWriter_WriteFunc.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileWriter_WriteFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c" HPDF_FileWriter_WriteFunc\0A\00", align 1
@HPDF_FILE_IO_ERROR = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_FileWriter_WriteFunc(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @HPDF_FWRITE(i32* %14, i32 1, i64 %15, i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HPDF_FILE_IO_ERROR, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @HPDF_FERROR(i64 %26)
  %28 = call i32 @HPDF_SetError(i32 %24, i32 %25, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @HPDF_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_FWRITE(i32*, i32, i64, i64) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i32 @HPDF_FERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
