; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c__cpp_default_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c__cpp_default_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOURCE_CHARSET = common dso_local global i8* null, align 8
@CODESET = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_cpp_default_encoding() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load i8*, i8** %1, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %0
  %10 = load i8*, i8** @SOURCE_CHARSET, align 8
  store i8* %10, i8** %1, align 8
  br label %11

11:                                               ; preds = %9, %4
  %12 = load i8*, i8** %1, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
