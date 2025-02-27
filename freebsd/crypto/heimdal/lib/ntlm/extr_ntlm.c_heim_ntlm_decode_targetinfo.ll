; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_decode_targetinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_decode_targetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i64, i32 }
%struct.ntlm_targetinfo = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_decode_targetinfo(%struct.ntlm_buf* %0, i32 %1, %struct.ntlm_targetinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntlm_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntlm_targetinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ntlm_buf* %0, %struct.ntlm_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ntlm_targetinfo* %2, %struct.ntlm_targetinfo** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %14 = call i32 @memset(%struct.ntlm_targetinfo* %13, i32 0, i32 24)
  %15 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

20:                                               ; preds = %3
  %21 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %22 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ntlm_buf*, %struct.ntlm_buf** %5, align 8
  %25 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @krb5_storage_from_readonly_mem(i32 %23, i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %4, align 4
  br label %110

32:                                               ; preds = %20
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %35 = call i32 @krb5_storage_set_byteorder(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %100, %32
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @krb5_ret_uint16(i32* %41, i32* %8)
  %43 = call i32 @CHECK(i32 %42, i32 0)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @krb5_ret_uint16(i32* %44, i32* %9)
  %46 = call i32 @CHECK(i32 %45, i32 0)
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %95 [
    i32 0, label %48
    i32 1, label %49
    i32 2, label %57
    i32 3, label %65
    i32 4, label %73
    i32 5, label %81
    i32 6, label %89
  ]

48:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %100

49:                                               ; preds = %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %54 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %53, i32 0, i32 5
  %55 = call i32 @ret_string(i32* %50, i32 %51, i32 %52, i32* %54)
  %56 = call i32 @CHECK(i32 %55, i32 0)
  br label %100

57:                                               ; preds = %40
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %62 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %61, i32 0, i32 4
  %63 = call i32 @ret_string(i32* %58, i32 %59, i32 %60, i32* %62)
  %64 = call i32 @CHECK(i32 %63, i32 0)
  br label %100

65:                                               ; preds = %40
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %70 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %69, i32 0, i32 3
  %71 = call i32 @ret_string(i32* %66, i32 %67, i32 %68, i32* %70)
  %72 = call i32 @CHECK(i32 %71, i32 0)
  br label %100

73:                                               ; preds = %40
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %78 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %77, i32 0, i32 2
  %79 = call i32 @ret_string(i32* %74, i32 %75, i32 %76, i32* %78)
  %80 = call i32 @CHECK(i32 %79, i32 0)
  br label %100

81:                                               ; preds = %40
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %86 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %85, i32 0, i32 1
  %87 = call i32 @ret_string(i32* %82, i32 %83, i32 %84, i32* %86)
  %88 = call i32 @CHECK(i32 %87, i32 0)
  br label %100

89:                                               ; preds = %40
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.ntlm_targetinfo*, %struct.ntlm_targetinfo** %7, align 8
  %92 = getelementptr inbounds %struct.ntlm_targetinfo, %struct.ntlm_targetinfo* %91, i32 0, i32 0
  %93 = call i32 @krb5_ret_uint32(i32* %90, i32* %92)
  %94 = call i32 @CHECK(i32 %93, i32 0)
  br label %100

95:                                               ; preds = %40
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SEEK_CUR, align 4
  %99 = call i32 @krb5_storage_seek(i32* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %89, %81, %73, %65, %57, %49, %48
  br label %36

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @krb5_storage_free(i32* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %30, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.ntlm_targetinfo*, i32, i32) #1

declare dso_local i32* @krb5_storage_from_readonly_mem(i32, i64) #1

declare dso_local i32 @krb5_storage_set_byteorder(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @krb5_ret_uint16(i32*, i32*) #1

declare dso_local i32 @ret_string(i32*, i32, i32, i32*) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
