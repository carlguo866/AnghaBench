; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_rpcs_crypted_check_perm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_rpcs_crypted_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @rpcs_crypted_check_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcs_crypted_check_perm(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 2130706433
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2130706433
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 3, i32* %2, align 4
  br label %18

14:                                               ; preds = %8, %1
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = call i32 @rpcs_default_check_perm(%struct.connection* %15)
  %17 = and i32 %16, -2
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @rpcs_default_check_perm(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
