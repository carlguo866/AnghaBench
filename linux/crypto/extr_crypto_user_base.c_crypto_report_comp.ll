; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_comp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_report_comp = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@CRYPTOCFGA_REPORT_COMPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.crypto_alg*)* @crypto_report_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_report_comp(%struct.sk_buff* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_report_comp, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %6 = call i32 @memset(%struct.crypto_report_comp* %5, i32 0, i32 4)
  %7 = getelementptr inbounds %struct.crypto_report_comp, %struct.crypto_report_comp* %5, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strscpy(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load i32, i32* @CRYPTOCFGA_REPORT_COMPRESS, align 4
  %12 = call i32 @nla_put(%struct.sk_buff* %10, i32 %11, i32 4, %struct.crypto_report_comp* %5)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.crypto_report_comp*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.crypto_report_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
