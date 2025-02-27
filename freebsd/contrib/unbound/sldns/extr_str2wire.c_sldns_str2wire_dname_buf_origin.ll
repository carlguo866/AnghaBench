; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_dname_buf_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_dname_buf_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_dname_buf_origin(i8* %0, i32* %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @sldns_str2wire_dname_buf_rel(i8* %17, i32* %18, i64* %12, i32* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %75

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, align 4
  %42 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %43 = call i32 @RET_ERR(i32 %41, i64 %42)
  store i32 %43, i32* %6, align 4
  br label %75

44:                                               ; preds = %33
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @RET_ERR(i32 %53, i64 %55)
  store i32 %56, i32* %6, align 4
  br label %75

57:                                               ; preds = %44
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = getelementptr inbounds i32, i32* %60, i64 -1
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @memmove(i32* %61, i32* %62, i64 %63)
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %73

70:                                               ; preds = %30, %27, %24
  %71 = load i64, i64* %12, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %52, %40, %22
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @sldns_str2wire_dname_buf_rel(i8*, i32*, i64*, i32*) #1

declare dso_local i32 @RET_ERR(i32, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
