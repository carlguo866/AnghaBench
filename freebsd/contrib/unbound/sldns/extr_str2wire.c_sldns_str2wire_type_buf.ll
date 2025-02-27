; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_type_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_type_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"TYPE0\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_TYPE = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_type_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @sldns_get_rr_type_by_name(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TYPE, align 4
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %13, %3
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sldns_write_uint16(i32* %26, i64 %27)
  %29 = load i64*, i64** %7, align 8
  store i64 2, i64* %29, align 8
  %30 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %23, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @sldns_get_rr_type_by_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
