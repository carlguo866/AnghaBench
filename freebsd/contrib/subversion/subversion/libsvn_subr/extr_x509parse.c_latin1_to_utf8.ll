; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_latin1_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_latin1_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_8__ = type { i64* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, %struct.TYPE_7__*, i32*)* @latin1_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @latin1_to_utf8(%struct.TYPE_7__** %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call i8* @apr_palloc(i32* %12, i32 %18)
  store i8* %19, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %38, %3
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 2, %44
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_membuf__create(%struct.TYPE_8__* %8, i32 %45, i32* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @svn_utf__encode_ucs4_string(%struct.TYPE_8__* %8, i8* %48, i32 %51, i64* %9)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i8* @apr_palloc(i32* %54, i32 16)
  %56 = bitcast i8* %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i64* %58, i64** %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_membuf__create(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf__encode_ucs4_string(%struct.TYPE_8__*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
