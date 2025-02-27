; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_make_points_affine.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_make_points_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@felem_one = common dso_local global i64 0, align 8
@felem_is_zero_int = common dso_local global i32 0, align 4
@felem_assign = common dso_local global i64 0, align 8
@felem_square_reduce = common dso_local global i64 0, align 8
@felem_mul_reduce = common dso_local global i64 0, align 8
@felem_inv = common dso_local global i64 0, align 8
@felem_contract = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, [3 x i32]*, i32*)* @make_points_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_points_affine(i64 %0, [3 x i32]* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca [3 x i32]*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store [3 x i32]* %1, [3 x i32]** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load [3 x i32]*, [3 x i32]** %5, align 8
  %9 = bitcast [3 x i32]* %8 to i32**
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* @felem_one, align 8
  %12 = inttoptr i64 %11 to void (i8*)*
  %13 = load i32, i32* @felem_is_zero_int, align 4
  %14 = load i64, i64* @felem_assign, align 8
  %15 = inttoptr i64 %14 to void (i8*, i8*)*
  %16 = load i64, i64* @felem_square_reduce, align 8
  %17 = inttoptr i64 %16 to void (i8*, i8*)*
  %18 = load i64, i64* @felem_mul_reduce, align 8
  %19 = inttoptr i64 %18 to void (i8*, i8*, i8*)*
  %20 = load i64, i64* @felem_inv, align 8
  %21 = inttoptr i64 %20 to void (i8*, i8*)*
  %22 = load i64, i64* @felem_contract, align 8
  %23 = inttoptr i64 %22 to void (i8*, i8*)*
  %24 = call i32 @ec_GFp_nistp_points_make_affine_internal(i64 %7, i32** %9, i32 4, i32* %10, void (i8*)* %12, i32 %13, void (i8*, i8*)* %15, void (i8*, i8*)* %17, void (i8*, i8*, i8*)* %19, void (i8*, i8*)* %21, void (i8*, i8*)* %23)
  ret void
}

declare dso_local i32 @ec_GFp_nistp_points_make_affine_internal(i64, i32**, i32, i32*, void (i8*)*, i32, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
