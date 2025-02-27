; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec3_salt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec3_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3PARAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_nsec3_salt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @ldns_rr_get_type(i32* %7)
  %9 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @ldns_rr_get_type(i32* %12)
  %14 = load i64, i64* @LDNS_RR_TYPE_NSEC3PARAM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %6
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @ldns_rr_rdf(i32* %17, i32 3)
  store i32* %18, i32** %2, align 8
  br label %20

19:                                               ; preds = %11, %1
  store i32* null, i32** %2, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
