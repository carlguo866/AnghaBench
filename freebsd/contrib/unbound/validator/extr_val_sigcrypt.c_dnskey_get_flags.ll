; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_get_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_dnskey_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnskey_get_flags(%struct.ub_packed_rrset_key* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @rrset_get_rdata(%struct.ub_packed_rrset_key* %9, i64 %10, i32** %6, i64* %7)
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = call i32 @memmove(i32* %8, i32* %17, i32 2)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ntohs(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @rrset_get_rdata(%struct.ub_packed_rrset_key*, i64, i32**, i64*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
