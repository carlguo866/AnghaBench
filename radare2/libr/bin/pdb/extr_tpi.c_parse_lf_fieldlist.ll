; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_lf_fieldlist.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_lf_fieldlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ut16 = common dso_local global i32 0, align 4
@SLF_ENUMERATE = common dso_local global i32 0, align 4
@lf_enumerate = common dso_local global i32 0, align 4
@SLF_NESTTYPE = common dso_local global i32 0, align 4
@lf_nesttype = common dso_local global i32 0, align 4
@SLF_METHOD = common dso_local global i32 0, align 4
@lf_method = common dso_local global i32 0, align 4
@SLF_MEMBER = common dso_local global i32 0, align 4
@lf_member = common dso_local global i32 0, align 4
@SLF_ONEMETHOD = common dso_local global i32 0, align 4
@lf_onemethod = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*, i32)* @parse_lf_fieldlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_lf_fieldlist(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  %14 = call i32 (...) @r_list_new()
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %61, %4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @ut16, align 4
  %29 = call i32 @READ2(i32 %24, i32 %25, i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %51 [
    i32 132, label %31
    i32 129, label %35
    i32 130, label %39
    i32 131, label %43
    i32 128, label %47
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* @SLF_ENUMERATE, align 4
  %33 = load i32, i32* @lf_enumerate, align 4
  %34 = call i32 @PARSE_LF2(i32 %32, i32 %33, i32 132)
  br label %52

35:                                               ; preds = %22
  %36 = load i32, i32* @SLF_NESTTYPE, align 4
  %37 = load i32, i32* @lf_nesttype, align 4
  %38 = call i32 @PARSE_LF2(i32 %36, i32 %37, i32 129)
  br label %52

39:                                               ; preds = %22
  %40 = load i32, i32* @SLF_METHOD, align 4
  %41 = load i32, i32* @lf_method, align 4
  %42 = call i32 @PARSE_LF2(i32 %40, i32 %41, i32 130)
  br label %52

43:                                               ; preds = %22
  %44 = load i32, i32* @SLF_MEMBER, align 4
  %45 = load i32, i32* @lf_member, align 4
  %46 = call i32 @PARSE_LF2(i32 %44, i32 %45, i32 131)
  br label %52

47:                                               ; preds = %22
  %48 = load i32, i32* @SLF_ONEMETHOD, align 4
  %49 = load i32, i32* @lf_onemethod, align 4
  %50 = call i32 @PARSE_LF2(i32 %48, i32 %49, i32 128)
  br label %52

51:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %63

52:                                               ; preds = %47, %43, %39, %35, %31
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %12, align 8
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %63

61:                                               ; preds = %55
  br label %17

62:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %60, %51
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @READ2(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PARSE_LF2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
