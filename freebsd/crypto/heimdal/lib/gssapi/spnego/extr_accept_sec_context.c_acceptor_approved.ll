; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_accept_sec_context.c_acceptor_approved.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/spnego/extr_accept_sec_context.c_acceptor_approved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @acceptor_approved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acceptor_approved(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GSS_C_NO_NAME, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %15, i64* %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = call i32 @gss_create_empty_oid_set(i64* %8, i32* %7)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @gss_add_oid_set_member(i64* %8, i32 %18, i32* %7)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GSS_C_ACCEPT, align 4
  %24 = call i64 @gss_acquire_cred(i64* %8, i32 %20, i32 %21, i32 %22, i32 %23, i32* %6, i32* null, i32* null)
  store i64 %24, i64* %9, align 8
  %25 = call i32 @gss_release_oid_set(i64* %8, i32* %7)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @GSS_S_COMPLETE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %3, align 8
  br label %34

31:                                               ; preds = %16
  %32 = call i32 @gss_release_cred(i64* %8, i32* %6)
  %33 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %31, %29, %14
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @gss_create_empty_oid_set(i64*, i32*) #1

declare dso_local i32 @gss_add_oid_set_member(i64*, i32, i32*) #1

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_release_oid_set(i64*, i32*) #1

declare dso_local i32 @gss_release_cred(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
