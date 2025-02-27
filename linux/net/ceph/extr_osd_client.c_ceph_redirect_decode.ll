; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_redirect_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_redirect_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_request_redirect = type { i32 }

@e_inval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"got v %d cv %d > 1 of ceph_request_redirect\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ceph_request_redirect::object_name is set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_request_redirect*)* @ceph_redirect_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_redirect_decode(i8** %0, i8* %1, %struct.ceph_request_redirect* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_request_redirect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ceph_request_redirect* %2, %struct.ceph_request_redirect** %6, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @e_inval, align 4
  %15 = call i32 @ceph_decode_need(i8** %12, i8* %13, i32 6, i32 %14)
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @ceph_decode_8(i8** %16)
  store i32 %17, i32* %7, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = call i32 @ceph_decode_8(i8** %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %66

26:                                               ; preds = %3
  %27 = load i8**, i8*** %4, align 8
  %28 = call i32 @ceph_decode_32(i8** %27)
  store i32 %28, i32* %9, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @e_inval, align 4
  %33 = call i32 @ceph_decode_need(i8** %29, i8* %30, i32 %31, i32 %32)
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.ceph_request_redirect*, %struct.ceph_request_redirect** %6, align 8
  %42 = getelementptr inbounds %struct.ceph_request_redirect, %struct.ceph_request_redirect* %41, i32 0, i32 0
  %43 = call i32 @ceph_oloc_decode(i8** %39, i8* %40, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %64

47:                                               ; preds = %26
  %48 = load i8**, i8*** %4, align 8
  %49 = call i32 @ceph_decode_32(i8** %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %66

54:                                               ; preds = %47
  %55 = load i8**, i8*** %4, align 8
  %56 = call i32 @ceph_decode_32(i8** %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = sext i32 %57 to i64
  %61 = getelementptr i8, i8* %59, i64 %60
  store i8* %61, i8** %58, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8**, i8*** %4, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %66, %54, %46
  %65 = load i32, i32* %11, align 4
  ret i32 %65

66:                                               ; preds = %52, %22
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %64
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_8(i8**) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local i32 @ceph_oloc_decode(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
