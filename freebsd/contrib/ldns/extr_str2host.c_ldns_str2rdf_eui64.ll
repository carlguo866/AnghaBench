; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_eui64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_eui64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"%2x-%2x-%2x-%2x-%2x-%2x-%2x-%2x%n\00", align 1
@LDNS_STATUS_INVALID_EUI64 = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_EUI64 = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_str2rdf_eui64(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %15)
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %15, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = trunc i64 %22 to i32
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @LDNS_STATUS_INVALID_EUI64, align 4
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 6
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 7
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @LDNS_RDF_TYPE_EUI64, align 4
  %45 = bitcast [8 x i32]* %14 to i32**
  %46 = call i32* @ldns_rdf_new_frm_data(i32 %44, i32 8, i32** %45)
  %47 = load i32**, i32*** %4, align 8
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %27
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @LDNS_STATUS_OK, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
