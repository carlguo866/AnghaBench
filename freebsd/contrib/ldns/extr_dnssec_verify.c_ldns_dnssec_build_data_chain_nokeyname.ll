; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_nokeyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_build_data_chain_nokeyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32, i32*, i32*, %struct.TYPE_5__*)* @ldns_dnssec_build_data_chain_nokeyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ldns_dnssec_build_data_chain_nokeyname(i32* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @ldns_rr_owner(i32* %17)
  store i32* %18, i32** %12, align 8
  br label %33

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @ldns_rr_list_rr_count(i32* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @ldns_rr_list_rr(i32* %27, i32 0)
  %29 = call i32* @ldns_rr_owner(i32* %28)
  store i32* %29, i32** %12, align 8
  br label %32

30:                                               ; preds = %22, %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %6, align 8
  br label %65

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %37 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32* @ldns_resolver_query(i32* %34, i32* %35, i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %6, align 8
  br label %65

44:                                               ; preds = %33
  %45 = load i32*, i32** %13, align 8
  %46 = call i64 @ldns_pkt_ancount(i32* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @ldns_pkt_free(i32* %49)
  br label %63

51:                                               ; preds = %44
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call %struct.TYPE_6__* @ldns_dnssec_build_data_chain(i32* %52, i32 %53, i32* null, i32* %54, i32* null)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %57, align 8
  %58 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %51, %48
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %6, align 8
  br label %65

65:                                               ; preds = %63, %42, %30
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %66
}

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i32* @ldns_resolver_query(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i32 @ldns_pkt_free(i32*) #1

declare dso_local %struct.TYPE_6__* @ldns_dnssec_build_data_chain(i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
