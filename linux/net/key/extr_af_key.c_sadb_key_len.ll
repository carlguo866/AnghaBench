; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_sadb_key_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_sadb_key_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sadb_key*)* @sadb_key_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sadb_key_len(%struct.sadb_key* %0) #0 {
  %2 = alloca %struct.sadb_key*, align 8
  %3 = alloca i32, align 4
  store %struct.sadb_key* %0, %struct.sadb_key** %2, align 8
  %4 = load %struct.sadb_key*, %struct.sadb_key** %2, align 8
  %5 = getelementptr inbounds %struct.sadb_key, %struct.sadb_key* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @DIV_ROUND_UP(i32 %6, i32 8)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @DIV_ROUND_UP(i32 %11, i32 4)
  ret i32 %12
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
