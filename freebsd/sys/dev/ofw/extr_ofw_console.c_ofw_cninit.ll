; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_console.c_ofw_cninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_console.c_ofw_cninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ofwcons\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @ofw_cninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_cninit(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %3 = load %struct.consdev*, %struct.consdev** %2, align 8
  %4 = getelementptr inbounds %struct.consdev, %struct.consdev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @strcpy(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
