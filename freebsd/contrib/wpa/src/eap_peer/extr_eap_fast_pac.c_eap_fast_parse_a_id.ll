; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_a_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_a_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Invalid A-ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_fast_pac*, i8*)* @eap_fast_parse_a_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_fast_parse_a_id(%struct.eap_fast_pac* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_fast_pac*, align 8
  %5 = alloca i8*, align 8
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %7 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @os_free(i32* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %12 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %11, i32 0, i32 1
  %13 = call i32* @eap_fast_parse_hex(i8* %10, i32* %12)
  %14 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %15 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %17 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @eap_fast_parse_hex(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
