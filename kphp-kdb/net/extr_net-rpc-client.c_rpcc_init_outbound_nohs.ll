; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_init_outbound_nohs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-client.c_rpcc_init_outbound_nohs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.rpcc_data = type { i32, i64 }

@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_init_outbound_nohs(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.rpcc_data*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = call %struct.rpcc_data* @RPCC_DATA(%struct.connection* %4)
  store %struct.rpcc_data* %5, %struct.rpcc_data** %3, align 8
  %6 = load i32, i32* @precise_now, align 4
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.rpcc_data*, %struct.rpcc_data** %3, align 8
  %10 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.rpcc_data*, %struct.rpcc_data** %3, align 8
  %12 = getelementptr inbounds %struct.rpcc_data, %struct.rpcc_data* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  ret i32 0
}

declare dso_local %struct.rpcc_data* @RPCC_DATA(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
