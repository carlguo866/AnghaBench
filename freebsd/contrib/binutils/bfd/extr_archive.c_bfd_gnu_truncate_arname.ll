; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_gnu_truncate_arname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_gnu_truncate_arname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_gnu_truncate_arname(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ar_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ar_hdr*
  store %struct.ar_hdr* %12, %struct.ar_hdr** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ar_maxnamelen(i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %9, align 8
  br label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  br label %74

37:                                               ; preds = %24
  %38 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 2
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %72

51:                                               ; preds = %37
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 111
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %63, 2
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 46, i8* %65, align 1
  %66 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 111, i8* %71, align 1
  br label %72

72:                                               ; preds = %59, %51, %37
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %72, %30
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %75, 16
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call signext i8 @ar_padchar(i32* %78)
  %80 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %79, i8* %84, align 1
  br label %85

85:                                               ; preds = %77, %74
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @ar_maxnamelen(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local signext i8 @ar_padchar(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
