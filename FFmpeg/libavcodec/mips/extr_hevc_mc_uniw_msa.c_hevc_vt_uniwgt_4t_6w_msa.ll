; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @__msa_fill_w(i32 %67)
  store i32 %68, i32* %58, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @__msa_fill_w(i32 %69)
  store i32 %70, i32* %59, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul nsw i32 %71, 128
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = sub nsw i32 %73, 6
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @__msa_fill_h(i32 %75)
  store i32 %76, i32* %55, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @__msa_fill_h(i32 %77)
  store i32 %78, i32* %56, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @__msa_fill_h(i32 %79)
  store i32 %80, i32* %57, align 4
  %81 = load i32, i32* %55, align 4
  %82 = load i32, i32* %57, align 4
  %83 = call i32 @__msa_srar_h(i32 %81, i32 %82)
  store i32 %83, i32* %55, align 4
  %84 = load i32, i32* %56, align 4
  %85 = load i32, i32* %55, align 4
  %86 = call i32 @__msa_adds_s_h(i32 %84, i32 %85)
  store i32 %86, i32* %56, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @LD_SH(i32* %87)
  store i32 %88, i32* %54, align 4
  %89 = load i32, i32* %54, align 4
  %90 = load i32, i32* %44, align 4
  %91 = load i32, i32* %45, align 4
  %92 = call i32 @SPLATI_H2_SH(i32 %89, i32 0, i32 1, i32 %90, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %25, align 4
  %98 = call i32 @LD_SB3(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 3, %99
  %101 = load i32*, i32** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %28, align 4
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %30, align 4
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %32, align 4
  %113 = load i32, i32* %33, align 4
  %114 = call i32 @LD_SB8(i32* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %25, align 4
  %118 = call i32 @XORI_B3_128_SB(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %29, align 4
  %123 = load i32, i32* %30, align 4
  %124 = load i32, i32* %31, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = call i32 @XORI_B8_128_SB(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %34, align 4
  %133 = load i32, i32* %36, align 4
  %134 = call i32 @ILVR_B2_SB(i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %35, align 4
  %140 = load i32, i32* %37, align 4
  %141 = call i32 @ILVR_B2_SB(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %28, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = call i32 @ILVR_B2_SB(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %29, align 4
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %30, align 4
  %153 = load i32, i32* %40, align 4
  %154 = load i32, i32* %41, align 4
  %155 = call i32 @ILVR_B2_SB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %32, align 4
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %32, align 4
  %160 = load i32, i32* %42, align 4
  %161 = load i32, i32* %43, align 4
  %162 = call i32 @ILVR_B2_SB(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %34, align 4
  %164 = load i32, i32* %35, align 4
  %165 = load i32, i32* %44, align 4
  %166 = load i32, i32* %45, align 4
  %167 = call i32 @HEVC_FILT_4TAP_SH(i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %46, align 4
  %168 = load i32, i32* %36, align 4
  %169 = load i32, i32* %37, align 4
  %170 = load i32, i32* %44, align 4
  %171 = load i32, i32* %45, align 4
  %172 = call i32 @HEVC_FILT_4TAP_SH(i32 %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %47, align 4
  %173 = load i32, i32* %35, align 4
  %174 = load i32, i32* %38, align 4
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %45, align 4
  %177 = call i32 @HEVC_FILT_4TAP_SH(i32 %173, i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %48, align 4
  %178 = load i32, i32* %37, align 4
  %179 = load i32, i32* %39, align 4
  %180 = load i32, i32* %44, align 4
  %181 = load i32, i32* %45, align 4
  %182 = call i32 @HEVC_FILT_4TAP_SH(i32 %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %49, align 4
  %183 = load i32, i32* %38, align 4
  %184 = load i32, i32* %40, align 4
  %185 = load i32, i32* %44, align 4
  %186 = load i32, i32* %45, align 4
  %187 = call i32 @HEVC_FILT_4TAP_SH(i32 %183, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %50, align 4
  %188 = load i32, i32* %39, align 4
  %189 = load i32, i32* %41, align 4
  %190 = load i32, i32* %44, align 4
  %191 = load i32, i32* %45, align 4
  %192 = call i32 @HEVC_FILT_4TAP_SH(i32 %188, i32 %189, i32 %190, i32 %191)
  store i32 %192, i32* %51, align 4
  %193 = load i32, i32* %40, align 4
  %194 = load i32, i32* %42, align 4
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %45, align 4
  %197 = call i32 @HEVC_FILT_4TAP_SH(i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %52, align 4
  %198 = load i32, i32* %41, align 4
  %199 = load i32, i32* %43, align 4
  %200 = load i32, i32* %44, align 4
  %201 = load i32, i32* %45, align 4
  %202 = call i32 @HEVC_FILT_4TAP_SH(i32 %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %53, align 4
  %203 = load i32, i32* %46, align 4
  %204 = load i32, i32* %47, align 4
  %205 = load i32, i32* %48, align 4
  %206 = load i32, i32* %49, align 4
  %207 = load i32, i32* %58, align 4
  %208 = load i32, i32* %56, align 4
  %209 = load i32, i32* %59, align 4
  %210 = load i32, i32* %46, align 4
  %211 = load i32, i32* %47, align 4
  %212 = load i32, i32* %48, align 4
  %213 = load i32, i32* %49, align 4
  %214 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %50, align 4
  %216 = load i32, i32* %51, align 4
  %217 = load i32, i32* %52, align 4
  %218 = load i32, i32* %53, align 4
  %219 = load i32, i32* %58, align 4
  %220 = load i32, i32* %56, align 4
  %221 = load i32, i32* %59, align 4
  %222 = load i32, i32* %50, align 4
  %223 = load i32, i32* %51, align 4
  %224 = load i32, i32* %52, align 4
  %225 = load i32, i32* %53, align 4
  %226 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %47, align 4
  %228 = load i32, i32* %46, align 4
  %229 = load i32, i32* %49, align 4
  %230 = load i32, i32* %48, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 @PCKEV_B2_UB(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %51, align 4
  %235 = load i32, i32* %50, align 4
  %236 = load i32, i32* %53, align 4
  %237 = load i32, i32* %52, align 4
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %22, align 4
  %240 = call i32 @PCKEV_B2_UB(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %19, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @ST_W2(i32 %241, i32 0, i32 2, i32* %242, i32 %243)
  %245 = load i32, i32* %19, align 4
  %246 = load i32*, i32** %12, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @ST_H2(i32 %245, i32 2, i32 6, i32* %247, i32 %248)
  %250 = load i32, i32* %20, align 4
  %251 = load i32*, i32** %12, align 8
  %252 = load i32, i32* %13, align 4
  %253 = mul nsw i32 2, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @ST_W2(i32 %250, i32 0, i32 2, i32* %255, i32 %256)
  %258 = load i32, i32* %20, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = load i32, i32* %13, align 4
  %261 = mul nsw i32 2, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  %265 = load i32, i32* %13, align 4
  %266 = call i32 @ST_H2(i32 %258, i32 2, i32 6, i32* %264, i32 %265)
  %267 = load i32, i32* %13, align 4
  %268 = mul nsw i32 4, %267
  %269 = load i32*, i32** %12, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %12, align 8
  %272 = load i32, i32* %21, align 4
  %273 = load i32*, i32** %12, align 8
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @ST_W2(i32 %272, i32 0, i32 2, i32* %273, i32 %274)
  %276 = load i32, i32* %21, align 4
  %277 = load i32*, i32** %12, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 4
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @ST_H2(i32 %276, i32 2, i32 6, i32* %278, i32 %279)
  %281 = load i32, i32* %22, align 4
  %282 = load i32*, i32** %12, align 8
  %283 = load i32, i32* %13, align 4
  %284 = mul nsw i32 2, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %13, align 4
  %288 = call i32 @ST_W2(i32 %281, i32 0, i32 2, i32* %286, i32 %287)
  %289 = load i32, i32* %22, align 4
  %290 = load i32*, i32** %12, align 8
  %291 = load i32, i32* %13, align 4
  %292 = mul nsw i32 2, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = getelementptr inbounds i32, i32* %294, i64 4
  %296 = load i32, i32* %13, align 4
  %297 = call i32 @ST_H2(i32 %289, i32 2, i32 6, i32* %295, i32 %296)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
