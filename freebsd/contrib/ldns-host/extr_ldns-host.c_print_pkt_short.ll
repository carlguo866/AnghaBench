; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_print_pkt_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_print_pkt_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Nameserver \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":\0A\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_pkt_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pkt_short(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @ldns_pkt_answer(i32* %7)
  store i32* %8, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @ldns_rr_list_rr_count(i32* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ldns_pkt_answerfrom(i32* %19)
  %21 = call i32 @print_rdf(i32 %20)
  %22 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ldns_rr_list_rr(i32* %24, i64 %25)
  %27 = call i32 @print_rr_short(i32 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32* @ldns_pkt_answer(i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_rdf(i32) #1

declare dso_local i32 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i32 @print_rr_short(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
