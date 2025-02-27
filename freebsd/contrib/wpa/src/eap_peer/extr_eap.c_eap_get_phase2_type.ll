; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_phase2_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_get_phase2_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_get_phase2_type(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @eap_peer_get_type(i8* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @eap_allowed_phase2_type(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @EAP_TYPE_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @eap_peer_get_type(i8*, i32*) #1

declare dso_local i64 @eap_allowed_phase2_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
