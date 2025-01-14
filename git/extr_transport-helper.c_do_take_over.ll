; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_do_take_over.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_do_take_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i64 }
%struct.helper_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transport*)* @do_take_over to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_take_over(%struct.transport* %0) #0 {
  %2 = alloca %struct.transport*, align 8
  %3 = alloca %struct.helper_data*, align 8
  store %struct.transport* %0, %struct.transport** %2, align 8
  %4 = load %struct.transport*, %struct.transport** %2, align 8
  %5 = getelementptr inbounds %struct.transport, %struct.transport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.helper_data*
  store %struct.helper_data* %7, %struct.helper_data** %3, align 8
  %8 = load %struct.transport*, %struct.transport** %2, align 8
  %9 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %10 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @transport_take_over(%struct.transport* %8, i32 %11)
  %13 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %14 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fclose(i32 %15)
  %17 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %18 = call i32 @free(%struct.helper_data* %17)
  ret void
}

declare dso_local i32 @transport_take_over(%struct.transport*, i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @free(%struct.helper_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
