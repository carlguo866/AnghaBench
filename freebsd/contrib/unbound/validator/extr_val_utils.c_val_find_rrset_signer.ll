; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_rrset_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_rrset_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_find_rrset_signer(%struct.ub_packed_rrset_key* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %9 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %12, %struct.packed_rrset_data** %7, align 8
  %13 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %14 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32**, i32*** %5, align 8
  store i32* null, i32** %18, align 8
  %19 = load i64*, i64** %6, align 8
  store i64 0, i64* %19, align 8
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %33 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32**, i32*** %5, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = call i32 @rrsig_get_signer(i32 %28, i32 %36, i32** %37, i64* %38)
  br label %40

40:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @rrsig_get_signer(i32, i32, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
