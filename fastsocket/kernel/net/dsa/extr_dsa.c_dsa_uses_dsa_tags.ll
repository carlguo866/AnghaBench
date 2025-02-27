; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_dsa.c_dsa_uses_dsa_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_dsa.c_dsa_uses_dsa_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch_tree = type { i64 }

@ETH_P_DSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_uses_dsa_tags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dsa_switch_tree*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dsa_switch_tree*
  store %struct.dsa_switch_tree* %5, %struct.dsa_switch_tree** %3, align 8
  %6 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @ETH_P_DSA, align 4
  %10 = call i64 @htons(i32 %9)
  %11 = icmp eq i64 %8, %10
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
