; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_parser_write_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_parser_write_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_cmd = type { i32 }
%struct.pmf_handlers = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"pmf: write_gpio(value: %02x, mask: %02x)\0A\00", align 1
@write_gpio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmf_cmd*, %struct.pmf_handlers*)* @pmf_parser_write_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmf_parser_write_gpio(%struct.pmf_cmd* %0, %struct.pmf_handlers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmf_cmd*, align 8
  %5 = alloca %struct.pmf_handlers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pmf_cmd* %0, %struct.pmf_cmd** %4, align 8
  store %struct.pmf_handlers* %1, %struct.pmf_handlers** %5, align 8
  %8 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %9 = call i32 @pmf_next32(%struct.pmf_cmd* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %11 = call i32 @pmf_next32(%struct.pmf_cmd* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @LOG_PARSE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @write_gpio, align 4
  %16 = load %struct.pmf_cmd*, %struct.pmf_cmd** %4, align 8
  %17 = load %struct.pmf_handlers*, %struct.pmf_handlers** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @PMF_PARSE_CALL(i32 %15, %struct.pmf_cmd* %16, %struct.pmf_handlers* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @pmf_next32(%struct.pmf_cmd*) #1

declare dso_local i32 @LOG_PARSE(i8*, i32, i32) #1

declare dso_local i32 @PMF_PARSE_CALL(i32, %struct.pmf_cmd*, %struct.pmf_handlers*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
