; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt312_state = type { i32 }

@RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt312_state*, i64)* @mt312_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_reset(%struct.mt312_state* %0, i64 %1) #0 {
  %3 = alloca %struct.mt312_state*, align 8
  %4 = alloca i64, align 8
  store %struct.mt312_state* %0, %struct.mt312_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mt312_state*, %struct.mt312_state** %3, align 8
  %6 = load i32, i32* @RESET, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 128, i32 64
  %11 = call i32 @mt312_writereg(%struct.mt312_state* %5, i32 %6, i32 %10)
  ret i32 %11
}

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
