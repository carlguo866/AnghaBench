; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_offwaketime_user.c_print_stacks.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_offwaketime_user.c_print_stacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_stacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stacks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_t, align 4
  %4 = alloca %struct.key_t, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.key_t* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @bpf_map_get_next_key(i32 %8, %struct.key_t* %3, %struct.key_t* %4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @bpf_map_lookup_elem(i32 %12, %struct.key_t* %4, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @print_stack(%struct.key_t* %4, i32 %14)
  %16 = bitcast %struct.key_t* %3 to i8*
  %17 = bitcast %struct.key_t* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  br label %7

18:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bpf_map_get_next_key(i32, %struct.key_t*, %struct.key_t*) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, %struct.key_t*, i32*) #2

declare dso_local i32 @print_stack(%struct.key_t*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
