; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_ntlm_user_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_ntlm_user_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_ntlm_cred = type { i32, i32, i32, i32, %struct.kcm_ntlm_cred* }

@ntlm_head = common dso_local global %struct.kcm_ntlm_cred* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_ntlm_user_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_ntlm_user_list(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kcm_ntlm_cred*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** @ntlm_head, align 8
  store %struct.kcm_ntlm_cred* %14, %struct.kcm_ntlm_cred** %12, align 8
  br label %15

15:                                               ; preds = %57, %5
  %16 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %17 = icmp ne %struct.kcm_ntlm_cred* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %21 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %24 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @kcm_is_same_session(i32* %19, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %57

29:                                               ; preds = %18
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @krb5_store_uint32(i32* %30, i32 1)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %6, align 8
  br label %64

36:                                               ; preds = %29
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %39 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @krb5_store_stringz(i32* %37, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %6, align 8
  br label %64

46:                                               ; preds = %36
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %49 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @krb5_store_stringz(i32* %47, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* %13, align 8
  store i64 %55, i64* %6, align 8
  br label %64

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %59 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %58, i32 0, i32 4
  %60 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %59, align 8
  store %struct.kcm_ntlm_cred* %60, %struct.kcm_ntlm_cred** %12, align 8
  br label %15

61:                                               ; preds = %15
  %62 = load i32*, i32** %11, align 8
  %63 = call i64 @krb5_store_uint32(i32* %62, i32 0)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %61, %54, %44, %34
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i32 @kcm_is_same_session(i32*, i32, i32) #1

declare dso_local i64 @krb5_store_uint32(i32*, i32) #1

declare dso_local i64 @krb5_store_stringz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
