; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_kind_operations = type { i32 }
%struct.btf_type = type { i32 }

@kind_ops = common dso_local global %struct.btf_kind_operations** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btf_kind_operations* (%struct.btf_type*)* @btf_type_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btf_kind_operations* @btf_type_ops(%struct.btf_type* %0) #0 {
  %2 = alloca %struct.btf_type*, align 8
  store %struct.btf_type* %0, %struct.btf_type** %2, align 8
  %3 = load %struct.btf_kind_operations**, %struct.btf_kind_operations*** @kind_ops, align 8
  %4 = load %struct.btf_type*, %struct.btf_type** %2, align 8
  %5 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @BTF_INFO_KIND(i32 %6)
  %8 = getelementptr inbounds %struct.btf_kind_operations*, %struct.btf_kind_operations** %3, i64 %7
  %9 = load %struct.btf_kind_operations*, %struct.btf_kind_operations** %8, align 8
  ret %struct.btf_kind_operations* %9
}

declare dso_local i64 @BTF_INFO_KIND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
