; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdrtm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdrtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_warc_rdrtm._key = internal constant [13 x i8] c"\0D\0AWARC-Date:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @_warc_rdrtm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_rdrtm(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @xmemmem(i8* %10, i64 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_warc_rdrtm._key, i64 0, i64 0), i32 12)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 12
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @_warc_find_eol(i8* %18, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %39

30:                                               ; preds = %15
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @xstrpisotime(i8* %31, i8** %8)
  store i32 %32, i32* %9, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %36, %29, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @xmemmem(i8*, i64, i8*, i32) #1

declare dso_local i8* @_warc_find_eol(i8*, i32) #1

declare dso_local i32 @xstrpisotime(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
